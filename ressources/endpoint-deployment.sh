torch-model-archiver --model-name helmet_detection --version 1.0 --serialized-file $BASEDIR"/assets/helmet_detection.torchscript.pt" --extra-files $BASEDIR"/resources/index_to_name.json",$BASEDIR"/objectDetectionHandler.py",$BASEDIR"/utils.py",$BASEDIR"/config.py" --handler $BASEDIR"/endpointHandler.py" --export-path $BASEDIR"/model-store" -f \
&& \
torchserve --start --model-store $BASEDIR"/model-store" --models helmet_detection=helmet_detection.mar --ts-config $BASEDIR"/configs/config.properties"
