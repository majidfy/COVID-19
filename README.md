# COVID-19
This repositry contains the Matlab scripts which were used to simulate the trends of the spread of COVID using the Ohio Dataset
Run the file single_run.m to evaluate the results for the tuned up parameters for the Ohio dataset the m file also plots the comparrisions of the 2 control parameters which are discussed in the paper.
The file optimize_parameters.m can be used to find the most optimum parameters which can fit the dataset
The file initialize_map.m can be run to generate the environment mesh which is used to run all the simulations in the single_run.m file. The script uses the Ohio map shapefile, along with the initial infections from the Ohio dataset to assign details (location in map, initial population, initial infections etc) to every cell
