import time
from django.core.management.base import BaseCommand
from django.db import connections
from django.db.utils import OperationalError


class Command(BaseCommand):
    help = 'check if database is online to proceed'
    
    def handle(self, *args, **kwargs):
        print("Start checking for database...")
        db_conn = None
        while not db_conn:
            try:
                db_conn = connections['default']
            except OperationalError:
                print('Database unavailable, waiting 1 second...')
                time.sleep(1)

        print("Database Available!")