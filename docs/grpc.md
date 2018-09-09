# gRPC Notes

## gRPC Tutorials
* [Introduction to gRPC](http://www.baeldung.com/grpc-introduction)

## gRPC Presentations
* [Enabling Googley Microservices with http2 and gRPC](https://www.slideshare.net/borisovalex/enabling-googley-microservices-with-http2-and-grpc)

## gRPC Installation for Python

Detailed installation instructions are [here](http://www.grpc.io/docs/quickstart/python.html).

Install [gRPC](http://www.grpc.io/docs/guides/) with:

OSX:
```bash
pip install grpcio
pip install grpcio-tools 
```

Raspbian:
```bash
sudo apt-get install python-dev
sudo pip install grpcio
sudo pip install grpcio-tools 
```

If the installation fails with `ImportError: No module named Cython`, install *Cython* with:
```bash
pip install Cython
```
