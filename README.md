# dbt-101
DBT for beginners. For big query examples

Install required packages :
 ```pip install -r requirements.txt```


Common issues:
1. Detected incompatible Protobuf Gencode/Runtime versions when loading types.proto: gencode 5.28.3 runtime 5.28.2. 
Runtime version cannot be older than the linked gencode version

```pip install --upgrade protobuf```