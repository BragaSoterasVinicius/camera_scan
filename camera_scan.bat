set posicaoIp = 0
set numeroDeCameras = 0
:proximaPorta
	::chamada ffmpeg com a posicaoIp concatenada na ponta
	if !errorlevel! NEQ 0(
		set /a posicaoIp +=1
		goto proximaPorta
	)|| if proximaPorta == 15(
		echo 'nenhuma câmera está conectada ao wifi correto'
	)
	else if !errorlevel! == 0(
		set /a numeroDeCameras += 1		
		::lógica para abrir o programa de exibição das câmeras
		goto proximaPorta	
	)
echo "Wifi escaneado, %numeroDeCameras% câmeras conectadas."
pause


