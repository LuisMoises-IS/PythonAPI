from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from controllers.movies_controllers import (
    get_movies,
    create_movie,
    update_movie,
    delete_movie
)
from database import get_db

router = APIRouter()

@router.get("/movies/")
async def read_movies(db: Session = Depends(get_db)):
    return await get_movies(db)

@router.post("/movies/")
async def add_movie(movie: dict, db: Session = Depends(get_db)):
    return await create_movie(movie, db)

@router.put("/movies/{movie_id}")
async def edit_movie(movie_id: int, movie: dict, db: Session = Depends(get_db)):
    return await update_movie(movie_id, movie, db)

@router.delete("/movies/{movie_id}")
async def remove_movie(movie_id: int, db: Session = Depends(get_db)):
    return await delete_movie(movie_id, db)
