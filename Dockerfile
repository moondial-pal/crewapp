# Updates:
#   : Update base Docker image to use a more recent version of Python, Kivy, kivy's deps, and kivymd
FROM python:3
RUN mkdir /app
RUN pip install --upgrade pip
RUN python3 -m pip install --upgrade setuptools
RUN pip install buildozer

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL maintainer="Luis Palacios <moondiallp@gmail.com>" \
      version="1.0"

CMD if __name__=='__main__':CrewApp().run()
    
