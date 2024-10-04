from sqlalchemy.orm import Session
from models import Movie

async def get_movies(db: Session):
    return db.query(Movie).all()

async def create_movie(movie_data: dict, db: Session):
    new_movie = Movie(**movie_data)
    db.add(new_movie)
    db.commit()
    db.refresh(new_movie)
    return new_movie

async def update_movie(movie_id: int, movie_data: dict, db: Session):
    movie = db.query(Movie).filter(Movie.id == movie_id).first()
    if movie:
        for key, value in movie_data.items():
            setattr(movie, key, value)
        db.commit()
    return movie

async def delete_movie(movie_id: int, db: Session):
    movie = db.query(Movie).filter(Movie.id == movie_id).first()
    if movie:
        db.delete(movie)
        db.commit()
        return {"message": "Movie deleted successfully"}
    return {"message": "Movie not found"}
