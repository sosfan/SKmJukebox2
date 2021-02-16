import argparse
from youtubesearchpython import *

parser = argparse.ArgumentParser()
parser.add_argument("stringsearch")
args = parser.parse_args()

videosSearch = VideosSearch(args.stringsearch, limit = 50, language = 'es', region = 'MX')

print(videosSearch.result(mode = ResultMode.json))
