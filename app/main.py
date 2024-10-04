from fastapi import FastAPI
from routes import movie_routes
from database import engine, Base

app = FastAPI()

# Crea las tablas en la base de datos
Base.metadata.create_all(bind=engine)

app.include_router(movie_routes.router)

@app.get("/")
def read_root():
    return {"message": "Welcome to the Movies API!"}
