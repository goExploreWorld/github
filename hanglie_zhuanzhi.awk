BEGIN {
FS="[, ]+"
}

{
	for (i = 1; i <= NF; i++)
	{
		data[NR,i] = $i
	}
}

END {
	for(i = 1; i <=NF ; i++)
	{
		printf("\n") > "DataProcess.csv"
		for(j=1;j<=NR;j++)
		{
			printf("%3d,"),data[j,i] > "DataProcess.csv"
		}
	}
}