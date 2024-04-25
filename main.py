# https://stackoverflow.com/questions/76598717/how-to-use-python-to-open-kmz-file-and-display-it-on-interactive-map
import folium
import zipfile
import io

from fastkml import kml

# read KML content 
kmz = zipfile.ZipFile("GNC.kmz", 'r')  # extract zip file first, then read kmz file inside the extracted folder
# saved as a string
kmz.extractall("./")
kmz.close()

kml_content = kmz.open('GNC.kml', 'r').read()  # kml content

# create KML object
k = kml.KML()
k.from_string(kml_content)

# read features from docs to folders to records and then extract geometries - in my case, Shapely points
docs = list(k.features())
folders = []


for d in docs:
    print(d)
    #folders.extend(list(d.features()))
records = []
for f in folders:
    records.extend(list(f.features()))
geoms = [element.geometry for element in records]  # extract geometry

# plot the geoms - latitude (y), longitude (x)
import folium
mapit = folium.Map()
for geom in geoms:
    folium.Marker(location=(geom.y, geom.x), fill_color='#43d9de', radius=2).add_to(mapit)
mapit.save('map.html')