import sys
from io import BytesIO


def call_and_capture_output(func):
    sys.stdout = buf = BytesIO()
    func()
    sys.stdout = sys.__stdout__
    return buf.getvalue()
