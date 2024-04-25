let
    base_url = "sig.energia.gob.ar",
    extension = "/visor/includes/multigrid_export.php",
    url = base_url & extension,
    header = [
        #"Content-Type" = "application/x-www-form-urlencoded",
        #"Accept" = "*/*"
    ],
    content1 = "GEOM=POLYGON((-6225094.4238116 -4375255.4984473,-6225308.7534468165 -4366417.219959212,-6226903.055695724 -4357721.283887421,-6229838.07354577 -4349381.813038172,-6234041.537116719 -4341604.152860893,-6239409.94318496 -4334579.81516172,-6245811.103776374 -4328481.762447247,-6253087.401072965 -4323460.149013584,-6261059.668486647 -4319638.623649243,-6269531.602335255 -4317111.284991614,-6278294.595490701 -4315940.3645062,-6287132.873978789 -4316154.694141417,-6295828.81005058 -4317748.996390324,-6304168.280899828 -4320684.01424037,-6311945.941077108 -4324887.47781132,-6318970.278776281 -4330255.88387956,-6325068.331490753 -4336657.044470974,-6330089.944924417 -4343933.341767565,-6333911.470288757 -4351905.609181248,-6336438.808946387 -4360377.543029855,-6337609.729431801 -4369140.536185301,-6337395.399796584 -4377978.814673389,-6335801.097547676 -4386674.75074518,-6332866.07969763 -4395014.221594429,-6328662.616126681 -4402791.881771708,-6323294.21005844 -4409816.219470881,-6316893.049467026 -4415914.272185354,-6309616.752170435 -4420935.885619017,-6301644.484756753 -4424757.410983358,-6293172.5509081455 -4427284.749640987,-6284409.5577527 -4428455.670126401,-6275571.279264611 -4428241.340491184,-6266875.34319282 -4426647.038242277,-6258535.872343572 -4423712.020392231,-6250758.212166293 -4419508.556821281,-6243733.87446712 -4414140.150753041,-6237635.821752647 -4407738.990161627,-6232614.208318983 -4400462.6928650355,-6228792.682954643 -4392490.425451353,-6226265.344297013 -4384018.491602746,-6225094.4238116 -4375255.4984473))&CAPAS=Markers,Buffer,GoogleMapsAR,res1104_mmino_eess,OpenLayers.Handler.RegularPolygon&BB=&CENTRO=POINT(-6281352.076621701,-4372198.0173163)",
    webdata1 = Web.Contents(
        url,
        [
            Headers = [
                #"Content-Type" = "application/x-www-form-urlencoded",
                #"Accept" = "*/*"
            ],
            Content = Text.ToBinary(content1)
        ]
    ),
    response1 = Json.Document(webdata1)
in
    response1
