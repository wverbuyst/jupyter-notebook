FROM jupyter/minimal-notebook

ENV HOME /home/notes

ENV PORT 8888

WORKDIR /project

COPY ./notes /home/notes

EXPOSE $PORT

CMD jupyter notebook --ip=0.0.0.0 --port=$PORT --no-browser --notebook-dir=$HOME --allow-root