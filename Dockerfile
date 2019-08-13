FROM continuumio/anaconda3

ADD requirements.txt /

RUN apt-get update && apt-get install graphviz -y

# I can't make this work :'(
# RUN pip install -r requirements.txt

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "--allow-root"]
