FROM python:3.6.8 AS build

WORKDIR /app
COPY . .

RUN pip install mlflow>=1.0 \
    && pip install numpy==1.14.3 \
    && pip install scipy \
    && pip install pandas==0.22.0 \
    && pip install scikit-learn==0.19.1 \
    && pip install cloudpickle

FROM build AS prod

FROM build AS dev

CMD mlflow server
