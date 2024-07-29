# Steps to reproduce BERT evaluation
## Create Python environment for Jupyter lab
```bash
python -m venv lab
source lab/bin/activate
pip install -r requirements_jupyter.txt
```

## Create dataset for BERT
Execute the code in Create\_Datasets.ipynb


## Run BERT
```bash
python -m venv bert
source bert/bin/activate
pip install -r requirements_bert.txt
./run.sh
```

## Create result plots
Execute code in Create\_Confusion.ipynb
