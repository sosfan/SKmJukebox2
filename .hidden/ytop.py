#!/usr/bin/env python3

from youtubesearchpython import *

playlist = Playlist.get('https://www.youtube.com/playlist?list=PL4fGSI1pDJn6fko1AmNa_pdGPZr5ROFvd', mode = ResultMode.json)
print(playlist)
