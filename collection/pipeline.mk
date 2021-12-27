TREE_DATASET=$(DATASET_DIR)tree.csv
TREE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)tree/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv\
    $(TRANSFORMED_DIR)tree/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292.csv

$(TRANSFORMED_DIR)tree/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv: collection/resource/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3
	$(run-pipeline)

$(TRANSFORMED_DIR)tree/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292.csv: collection/resource/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292
	$(run-pipeline)

$(TREE_DATASET): $(TREE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(TREE_TRANSFORMED_FILES)

dataset:: $(TREE_DATASET)


TREE_PRESERVATION_ORDER_DATASET=$(DATASET_DIR)tree-preservation-order.csv
TREE_PRESERVATION_ORDER_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)tree-preservation-order/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8.csv\
    $(TRANSFORMED_DIR)tree-preservation-order/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf.csv

$(TRANSFORMED_DIR)tree-preservation-order/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146.csv: collection/resource/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230.csv: collection/resource/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f.csv: collection/resource/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe.csv: collection/resource/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea.csv: collection/resource/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db.csv: collection/resource/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3.csv: collection/resource/8f35e0a7bbca0daeda982d6f39aac0afa7b0fae1bf9419c53a5d279f450ad7b3
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292.csv: collection/resource/a993375ec694f798bbfacff2a8553141a537436d017c6f30e161c6c4b55b5292
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705.csv: collection/resource/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8.csv: collection/resource/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-order/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf.csv: collection/resource/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf
	$(run-pipeline)

$(TREE_PRESERVATION_ORDER_DATASET): $(TREE_PRESERVATION_ORDER_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(TREE_PRESERVATION_ORDER_TRANSFORMED_FILES)

dataset:: $(TREE_PRESERVATION_ORDER_DATASET)


TREE_PRESERVATION_ZONE_DATASET=$(DATASET_DIR)tree-preservation-zone.csv
TREE_PRESERVATION_ZONE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)tree-preservation-zone/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/b2a456b6735fb44e4ec7b86f1dd662802a3b123d29accc057149c24ebdbdfe09.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/e6f0a43ad172c74d2ae597caf4841ec41c27bee586b0cc3fc91a11b75506ae50.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8.csv\
    $(TRANSFORMED_DIR)tree-preservation-zone/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf.csv

$(TRANSFORMED_DIR)tree-preservation-zone/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146.csv: collection/resource/06b04d580c663b3be92b052f51c54f773cd1e10907fa34fee26e21f79f5fd146
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230.csv: collection/resource/10a1d54078c8dddf5a75e745bc78ec0febe6d8b074043814d580897188068230
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f.csv: collection/resource/20ab1d84c669217e70328f90d2379c75c59a3889945bfba4941090021ab2214f
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe.csv: collection/resource/2c8acd4d9e2920fb257b14ebcfb42344dea71e76572966f47f95641e0984fabe
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea.csv: collection/resource/565ccd7f93f479428b2164f3e02e49a454f47721bf418b1a153ac19049ec05ea
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db.csv: collection/resource/7315d937dcef7d3b9028d71e0ce6cd9b0277e36cb2b69783e1b215a955ce20db
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/b2a456b6735fb44e4ec7b86f1dd662802a3b123d29accc057149c24ebdbdfe09.csv: collection/resource/b2a456b6735fb44e4ec7b86f1dd662802a3b123d29accc057149c24ebdbdfe09
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705.csv: collection/resource/cab148c36aaec04f795c14ab88b2bba4b1d713578d17dab1b5e4d782ee78b705
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/e6f0a43ad172c74d2ae597caf4841ec41c27bee586b0cc3fc91a11b75506ae50.csv: collection/resource/e6f0a43ad172c74d2ae597caf4841ec41c27bee586b0cc3fc91a11b75506ae50
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8.csv: collection/resource/eb5dbbbc4aed2ec190375d15f06b772559d336b94ba776aa3ddd3c042efa34f8
	$(run-pipeline)

$(TRANSFORMED_DIR)tree-preservation-zone/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf.csv: collection/resource/f9c98a7bb2fe99b4fffb86a5d8f4d840119f6fa72c7b2876ed5dac7d78fa39bf
	$(run-pipeline)

$(TREE_PRESERVATION_ZONE_DATASET): $(TREE_PRESERVATION_ZONE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(TREE_PRESERVATION_ZONE_TRANSFORMED_FILES)

dataset:: $(TREE_PRESERVATION_ZONE_DATASET)
