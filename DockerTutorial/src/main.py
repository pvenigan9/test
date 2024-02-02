from fastapi import fastapi

app = FastAPI()

@app.get("/")
def read_root()
    return ("hello world")