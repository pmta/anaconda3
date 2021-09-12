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
[i7 ~]$ docker run pmta/anaconda3 
[I 16:54:49.661 NotebookApp] Writing notebook server cookie secret to /home/anaconda/.local/share/jupyter/runtime/notebook_cookie_secret
[I 16:54:49.899 NotebookApp] JupyterLab extension loaded from /home/anaconda/.bin/anaconda3/lib/python3.7/site-packages/jupyterlab
[I 16:54:49.899 NotebookApp] JupyterLab application directory is /home/anaconda/.bin/anaconda3/share/jupyter/lab
[I 16:54:49.902 NotebookApp] Serving notebooks from local directory: /home/anaconda
[I 16:54:49.902 NotebookApp] The Jupyter Notebook is running at:
[I 16:54:49.902 NotebookApp] http://172.17.0.2:8889/?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5
[I 16:54:49.902 NotebookApp]  or http://127.0.0.1:8889/?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5
[I 16:54:49.902 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 16:54:49.906 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///home/anaconda/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://172.17.0.2:8889/?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5
     or http://127.0.0.1:8889/?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5
[I 16:55:03.669 NotebookApp] 302 GET /?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5 (172.17.0.1) 1.28ms

```
Now the Jupyter environment can be opened in browser by connecting to provided url.

(http://172.17.0.2:8889/?token=cbfbf9ff2092188bfb98018444fe46a9fe69ba537a611ec5 in above example)



Alternatively container can be run with a specific binary, for example 
interactive python iPython:

```
[i7 ~]$ docker run -it pmta/anaconda3 ipython3
Python 3.7.3 (default, Mar 27 2019, 22:11:17) 
Type 'copyright', 'credits' or 'license' for more information
IPython 7.6.1 -- An enhanced Interactive Python. Type '?' for help.

In [1]: import numpy

In [2]: numpy.abs 
                  abs            
                  absolute       
                  absolute_import   
```


