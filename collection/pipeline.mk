TREE_PRESERVATION_ORDER_DATASET=$(DATASET_DIR)tree-preservation-order.csv
TREE_PRESERVATION_ORDER_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)tree-preservation-order/61ed041ab7f53b34b84519af6b2e80563046dc7f62bb079ae530a0dde8e52e90.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv

$(TRANSFORMED_DIR)tree-preservation-order/61ed041ab7f53b34b84519af6b2e80563046dc7f62bb079ae530a0dde8e52e90.csv: collection/resource/61ed041ab7f53b34b84519af6b2e80563046dc7f62bb079ae530a0dde8e52e90
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv: collection/resource/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3
	$(run-pipeline)

$(TREE_PRESERVATION_ORDER_DATASET): $(TREE_PRESERVATION_ORDER_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(TREE_PRESERVATION_ORDER_TRANSFORMED_FILES)

dataset:: $(TREE_PRESERVATION_ORDER_DATASET)
