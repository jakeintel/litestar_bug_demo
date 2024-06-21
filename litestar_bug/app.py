'''Demo crash on readonly root filesystem'''
from litestar import Litestar, get


@get("/")
async def hello_world() -> str:
    '''Return a simple hello world message.'''
    return "Hello, world!"


app = Litestar([hello_world])
