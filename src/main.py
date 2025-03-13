from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

import items


app = FastAPI(title="Database API")
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
app.include_router(items.api.router)
