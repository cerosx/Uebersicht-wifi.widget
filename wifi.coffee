command: "ipconfig getifaddr en0"

refreshFrequency: 50000

style: """
  /* Modify Colors and Size Here:*/
  
  size = 200px                //This is just a base for the overall size so everything stays centered

  width: size   
  text-align: left


  height: 60px
  
  /*POSITION*/
  top: 41.7%
  left: 3.5%

  /*COLORS*/
  primaryColor = rgba(255,255,255,0.55)
  secondaryColor = rgba(0, 0, 0, 0.15)
  textColor = rgba(255,255,255,0.85)

  font-family: Helvetica
  font-weight: 300
  font-size: 16px

  #icon
    float: left
    margin-right: 30px

  #text
    float: left
 
  #txt
    color: textColor
    font-size: 12px

  img
    opacity: 0.7

  #ip
    color: primaryColor
    font-size: 14px
    font-weight: 300

  #wifibox
    padding: 15px 0px 15px 0px
    color: primaryColor
    
"""


render: (output) -> """
  <div id="wifibox">
    <div id="icon"><img src="wifi.widget/wifi.png" width="33" height="24"></div>
    <div id="text">
        <div id="txt"><b>WIFI IP</b></div>
        <div id="ip"></div>
    </div>
  </div>
"""


update: (output) ->  
  if output != ""
    $('#wifibox').show()
    $('#ip').text output
  else
    $('#wifibox').hide()

