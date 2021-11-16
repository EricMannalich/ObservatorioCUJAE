import multiprocessing

name = 'Observatorio'
loglevel = 'info'
errorlog = '-'
accesslog = '-'
workers = multiprocessing.cpu_count() * 2 + 1