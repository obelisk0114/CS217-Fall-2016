

#define BLOCK_SIZE 512

__global__ void bpnn_layerforward (float *l1, float *l2, float **conn, int n1, int n2) {

	/* Use extern shared memory to store **conn */
	// need to convert 2D array to 1D
	extern __shared__ float temp_conn[];
	float sum;
	int j, k;

	/*** Set up thresholding unit ***/
	l1[0] = 1.0;

	/*** For each unit in second layer ***/
	if (threadIdx.x <= n2 && threadIdx.x != 0) {
		
		/*** Compute weighted sum of its inputs ***/
		sum = 0.0;
		for (k = 0; k <= n1; k++) {
			sum += temp_conn[k * n2 + threadIdx.x] * l1[k];
		}

		l2[threadIdx.x] = squash(sum);
	}
}
