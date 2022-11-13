# Anaconda distribution

Container with Anaconda Distribution. 

Anaconda® is a package manager, an environment manager, a Python/R data 
science distribution, and a collection of open source packages.

https://www.anaconda.com/

https://www.anaconda.com/distribution/

## Container layout
Anaconda is installed in /home/$user/.local/ 

The installation has standalone install of python3 with various libraries 
(numpy, pandas, numba etc.), visualization tools (Matplotlib, Bokeh etc.), 
jupyter notebook environment as well as conda package management tool for
installing additional packges. 

See installed binaries in /home/$user/.local/bin/.


In addition to base Anaconda installation, package "keras" is installed as an example.


## Running the container

By default a Jupyter environment is started:
```
[user@fedora ~]$ podman run -p 8889:8889 pmta/anaconda3
:
[I 2022-11-13 19:16:24.560 LabApp] JupyterLab application directory is /home/anaconda/.local/share/jupyter/lab
[I 19:16:24.563 NotebookApp] Serving notebooks from local directory: /home/anaconda
[I 19:16:24.563 NotebookApp] Jupyter Notebook 6.4.12 is running at:
[I 19:16:24.563 NotebookApp] http://10.0.2.100:8889/?token=b178ae88e36fbd32cfde5a896cbfb79a6bd484f42846ba33
[I 19:16:24.563 NotebookApp]  or http://127.0.0.1:8889/?token=b178ae88e36fbd32cfde5a896cbfb79a6bd484f42846ba33
[I 19:16:24.563 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 19:16:24.565 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///home/anaconda/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://10.0.2.100:8889/?token=b178ae88e36fbd32cfde5a896cbfb79a6bd484f42846ba33
     or http://127.0.0.1:8889/?token=b178ae88e36fbd32cfde5a896cbfb79a6bd484f42846ba33

```
Now the Jupyter environment can be opened in browser by connecting to provided url.

(http://127.0.0.1:8889/?token=b178ae88e36fbd32cfde5a896cbfb79a6bd484f42846ba33 in above example)



Alternatively container can be run with a specific binary, for example 
interactive python iPython:

```
[user@fedora ~]$ podman run -it pmta/anaconda3 ipython3
Python 3.9.13 (main, Aug 25 2022, 23:26:10) 
Type 'copyright', 'credits' or 'license' for more information
IPython 7.31.1 -- An enhanced Interactive Python. Type '?' for help.

In [1]: 

```


