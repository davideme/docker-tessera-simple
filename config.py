import os

GRAPHITE_URL = os.getenv('GRAPHITE_URL', 'http://localhost:8080')
SECRET_KEY = os.getenv('SECRET_KEY', 'cb55d1a0-fa54-44f9-833a-00dabbe7c5a6')
SERVER_PORT = 80
DEFAULT_THEME = 'snow'
SQLALCHEMY_DATABASE_URI = 'sqlite:////var/lib/tessera/tessera.db'
