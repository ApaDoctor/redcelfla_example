from celery import Celery

celery = Celery("main", broker="redis://redis:6379/0", backend="redis://redis:6379/0")


@celery.task
def some_task():
    print("Glory to Health Food!")
