ARG APP_SERVER_PORT=8383
# python
# FROM nvcr.io/nvidia/dli/dli-nano-ai:v2.0.2-r32.7.1
FROM  nvcr.io/nvidia/l4t-ml:r32.5.0-py3

# copy the code files
WORKDIR /app
COPY . /app/

# Build the environnement
RUN ls -l
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

EXPOSE $APP_SERVER_PORT
CMD ["python", "src/main.py"]
# CMD ["uvicorn", "webserver:app", "--host", "0.0.0.0", "--port", "${WEBAPP_SERVER_PORT}"]