/*
   Copyright 2020, UCAR/Unidata See COPYRIGHT file for copying and
   redistribution conditions.

   This program tests netcdf-4 parallel I/O using fill values.

   Ed Hartnett, 8/20/20
*/

#include <config.h>
#include <pio.h>
#include <mpi.h>
#include <pio_tests.h>
#include <netcdf_par.h>

#define FILE_NAME "tst_parallel_fill.nc"
#define DIM_NAME "Elephants"
#define DIM_LEN 4
#define VAR_NAME "Hannible"
#define NDIM1 1
#define NUM_TYPES 2
#define MAX_SIZE 4
#define NUM_DF_TESTS 2

int
main(int argc, char **argv)
{
    /* MPI stuff. */
    int mpi_size, my_rank;
    MPI_Comm comm = MPI_COMM_WORLD;
    MPI_Info info = MPI_INFO_NULL;
    int elements_per_pe;

    /* Netcdf-4 stuff. */
    int ncid, dimid, varid[NUM_TYPES];
    int type[NUM_TYPES] = {NC_BYTE, NC_INT};
    int t, df;

    /* Initialize MPI. */
    MPI_Init(&argc, &argv);
    MPI_Comm_size(MPI_COMM_WORLD, &mpi_size);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    if (mpi_size != 1 && mpi_size != 4) ERR(ERR_WRONG);
    elements_per_pe = DIM_LEN / mpi_size;

    /* Run the test with or without default fill value. */
    for (df = 0; df < NUM_DF_TESTS; df++)
    {
	/* Run the test for each type in the list. */
	for (t = 0; t < NUM_TYPES; t++)
	{
	    /* Create a test data file. */
	    if (nc_create_par(FILE_NAME, NC_NETCDF4, comm, info, &ncid)) ERR(ERR_WRONG);
	    if (nc_def_dim(ncid, DIM_NAME, DIM_LEN, &dimid)) ERR(ERR_WRONG);
	    if (nc_def_var(ncid, VAR_NAME, type[t], NDIM1, &dimid, &varid[t])) ERR(ERR_WRONG);
	    if (nc_close(ncid)) ERR(ERR_WRONG);
	    
	    /* Open the file and check it. */
	    {
		int ndims, nvars, natts, unlimdimid;
		int xtype_in, dimid_in;
		char name_in[NC_MAX_NAME +1];
		size_t start[NDIM1] = {0}, count[NDIM1];
		signed char dbyte[MAX_SIZE], exp_byte = NC_FILL_BYTE;
		int dint[MAX_SIZE], exp_int = NC_FILL_INT;
		int d;
		
		if (nc_open_par(FILE_NAME, NC_NOWRITE, comm, info, &ncid)) ERR(ERR_WRONG);
		if (nc_inq(ncid, &ndims, &nvars, &natts, &unlimdimid)) ERR(ERR_WRONG);
		if (nvars != 1 || ndims != 1 || natts != 0 || unlimdimid != -1) ERR(ERR_WRONG);
		if (nc_inq_var(ncid, 0, name_in, &xtype_in, &ndims, &dimid_in, &natts)) ERR(ERR_WRONG);
		if (strcmp(name_in, VAR_NAME) || xtype_in != type[t] || ndims != 1 ||
		    dimid_in != 0 || natts != 0) ERR(ERR_WRONG);
		
		/* Read the data. */
		count[0] = elements_per_pe;
		switch (type[t])
		{
		case NC_BYTE:
		    if (nc_get_vara_schar(ncid, 0, start, count, dbyte)) ERR(ERR_WRONG);
		    for (d = 0; d < elements_per_pe; d++)
			if (dbyte[d] != (df ? exp_byte : NC_FILL_BYTE)) ERR(ERR_WRONG);
		    break;
		case NC_INT:
		    if (nc_get_vara_int(ncid, 0, start, count, dint)) ERR(ERR_WRONG);
		    for (d = 0; d < elements_per_pe; d++)
			if (dint[d] != (df ? exp_int : NC_FILL_INT)) ERR(ERR_WRONG);
		    break;
		}
		if (nc_close(ncid)) ERR(ERR_WRONG);
	    }
	} /* next t */
    } /* next df */
    
    /* Shut down MPI. */
    MPI_Finalize();

    /* if (!my_rank) */
    /*    FINAL_RESULTS; */

    return 0;
}
