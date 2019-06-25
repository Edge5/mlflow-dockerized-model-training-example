
docker-compose exec --user root  mlflow-example /bin/bash

mlflow experiments create -n winequality

mlflow run . -e 'main' -P alpha=0.5 --experiment-name winequality --no-conda

->
=== Run (ID 'ec32b191df8a41179cb9495e26bb1196') succeeded ===

->
mlflow models serve -m runs:/d820948bcbb147bfbadc64e6357c6e6a/model -h 0.0.0.0 -p 5001 --no-conda
