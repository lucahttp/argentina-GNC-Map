# Argen GNC Map

getting data from the Argentine Ministry of Energy about the different gas stations


main website: https://sig.energia.gob.ar/visor/visorsig.php










#### Working
##### Getting GNC Stations - Map

https://sig.energia.gob.ar/wmsenergia

```Bash
curl  -X GET \
  'https://sig.energia.gob.ar/wmspubmap?LAYERS=res1104_mmino_eess&FORMAT=image%2Fpng&TRANSPARENT=TRUE&SERVICE=WMS&VERSION=1.1.1&REQUEST=GetMap&STYLES=&SRS=EPSG%3A900913&BBOX=-13805138.802525%2C-11046067.829807%2C283734.24903775%2C870770.62630665&WIDTH=1440&HEIGHT=1218' \
  --header 'Accept: image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8' \
  --header 'Accept-Language: es-AR,es-US;q=0.9,es;q=0.8,en-US;q=0.7,en;q=0.6,es-419;q=0.5,de;q=0.4' \
  --header 'Connection: keep-alive' \
  --header 'Cookie: PHPSESSID=mfu59g7kd1pvvglhogk1781gfg; SL_G_WPT_TO=en; SL_GWPT_Show_Hide_tmp=1; SL_wptGlobTipTmp=1' \
  --header 'Referer: https://sig.energia.gob.ar/visor/visorsig.php' \
  --header 'Sec-Fetch-Dest: image' \
  --header 'Sec-Fetch-Mode: no-cors' \
  --header 'Sec-Fetch-Site: same-origin' \
  --header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36' \
  --header 'dnt: 1' \
  --header 'sec-ch-ua: Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123' \
  --header 'sec-ch-ua-mobile: ?0' \
  --header 'sec-ch-ua-platform: Windows' \
  --header 'sec-gpc: 1'
```
##### Getting GNC Stations - Data, Location & Prices

```Bash
curl  -X POST \
  'https://sig.energia.gob.ar/visor/includes/multigrid_export.php' \
  --header 'Accept: */*' \
  --header 'User-Agent: Thunder Client (https://www.thunderclient.com)' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --header 'Cookie: PHPSESSID=7fdhgbb08k3nptsgh0ve06ldek' \
  --data-urlencode 'GEOM=POLYGON((-6225094.4238116 -4375255.4984473,-6225308.7534468165 -4366417.219959212,-6226903.055695724 -4357721.283887421,-6229838.07354577 -4349381.813038172,-6234041.537116719 -4341604.152860893,-6239409.94318496 -4334579.81516172,-6245811.103776374 -4328481.762447247,-6253087.401072965 -4323460.149013584,-6261059.668486647 -4319638.623649243,-6269531.602335255 -4317111.284991614,-6278294.595490701 -4315940.3645062,-6287132.873978789 -4316154.694141417,-6295828.81005058 -4317748.996390324,-6304168.280899828 -4320684.01424037,-6311945.941077108 -4324887.47781132,-6318970.278776281 -4330255.88387956,-6325068.331490753 -4336657.044470974,-6330089.944924417 -4343933.341767565,-6333911.470288757 -4351905.609181248,-6336438.808946387 -4360377.543029855,-6337609.729431801 -4369140.536185301,-6337395.399796584 -4377978.814673389,-6335801.097547676 -4386674.75074518,-6332866.07969763 -4395014.221594429,-6328662.616126681 -4402791.881771708,-6323294.21005844 -4409816.219470881,-6316893.049467026 -4415914.272185354,-6309616.752170435 -4420935.885619017,-6301644.484756753 -4424757.410983358,-6293172.5509081455 -4427284.749640987,-6284409.5577527 -4428455.670126401,-6275571.279264611 -4428241.340491184,-6266875.34319282 -4426647.038242277,-6258535.872343572 -4423712.020392231,-6250758.212166293 -4419508.556821281,-6243733.87446712 -4414140.150753041,-6237635.821752647 -4407738.990161627,-6232614.208318983 -4400462.6928650355,-6228792.682954643 -4392490.425451353,-6226265.344297013 -4384018.491602746,-6225094.4238116 -4375255.4984473))' \
  --data-urlencode 'CAPAS=Markers,Buffer,GoogleMapsAR,res1104_mmino_eess,OpenLayers.Handler.RegularPolygon' \
  --data-urlencode 'BB=' \
  --data-urlencode 'CENTRO=POINT(-6281352.076621701,-4372198.0173163)'
```


#### different endpoints
https://sig.energia.gob.ar/visor/visorsig.php
http://ide.energia.gob.ar/geonetwork/srv/spa/catalog.search#/metadata/0a182791-eade-4c26-a10e-6e39d61b6c20
https://sig.energia.gob.ar/wmsenergia
http://ide.energia.gob.ar/geonetwork/srv/spa/catalog.search#/metadata/0a182791-eade-4c26-a10e-6e39d61b6c20

http://ide.energia.gob.ar/geonetwork/srv/en/resources.get?uuid=0a182791-eade-4c26-a10e-6e39d61b6c20&fname=&access=private

http://ide.energia.gob.ar/geonetwork/srv/api/records/0652c54c-e024-4e7f-9345-f1563c6d27b0/formatters/xml
http://ide.energia.gob.ar/geonetwork/srv/api/records/0a182791-eade-4c26-a10e-6e39d61b6c20/formatters/xml
http://ide.energia.gob.ar/geonetwork/srv/spa/catalog.search#/metadata/5adb027a-154b-4fb4-a9c4-08a65bd55e17




### Side documentation
#### WMS & GeoServer
https://stackoverflow.com/questions/58498023/how-to-set-wms-parameter-bbox-width-height-x-y
https://docs.geoserver.org/stable/en/user/services/wms/reference.html#wms-getmap:~:text=srs%3DEPSG%253A4326%0A%26-,bbox,-%3D%2D145.15104058007%2C21.731919794922%2C%2D57.154894212888%2C58.961058642578%26%0A%26width

#### MapBox
https://docs.mapbox.com/mapbox-gl-js/example/wms/

https://docs.mapbox.com/mapbox.js/example/v1.0.0/wms/
https://blog.mapbox.com/using-mapbox-with-wms-servers-422a8aa4e8e6





