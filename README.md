# docker-spark

Docker image to work with Apache Spark without install it.

# Usage

Run the following command to create an alias to allow you to use this Docker image in the same way than if the tool would be installed as usual.

```sh
alias spark-shell='docker run --rm -it -v $(pwd):/app boxyware/spark'
```

With the previous alias is possible to launch the ```spark-shell```, a Scala console to work interactively with Spark framework.

The image can be also used to work with other Spark commands running the container as follows:

```sh
alias spark-submit='docker run --rm -it --entrypoint /opt/spark/bin/spark-submit boxyware/spark'
alias spark-shell='docker run --rm -it -v $(pwd):/app boxyware/spark --packages "ml.combust.mleap:mleap-spark_2.11:0.13.0"'
```

The first alias is used to work with the ```spark-submit``` command and the second one is also used to work with ```spark-shell``` but including the MLeap library.

>For more information about this library follow this [link](http://mleap-docs.combust.ml/).

After create the alias, they can be used in the same way that installing Spark. e.g:

```sh
spark-shell
```

>This image has set the working directory at ```/app```.