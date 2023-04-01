PCM = {
	DataForComLogicalLinkCreation = {
		BusTypeShortName = "ISO_11898_2_DWCAN",
		ProtocolShortName = "ISO_15765_3_on_ISO_15765_2",
		--default is Pin 6 High and 14 Low
	 },
	ComParamsFromTesterPointOfView = { 
		CP_CanFuncReqFormat = 0x05;   
		CP_CanFuncReqId = 0x7DF;      
		CP_CanFuncReqExtAddr = 0x00;  
		
		
		CP_CanPhysReqId = 0x7E0; 
		CP_CanRespUSDTId = 0x7E8;   		   
	},
	Raw = {
		["3E 00"] = "7E 00",
		["10 01"] = "50 01 00 14 01 F4",
		["10 02"] = function(request) PCM.restartFlashFileReconstruction() return "50 02 00 32 01 F4" end,
		["10 03"] = "50 03 00 14 01 F4",
		["19 02 04"] = "59 02 FF",
		["19 02 08"] = "59 02 FF",
		["19 02 20"] = "59 02 FF 00 6A 8D 23",
		["19 06 00 6A 8D FF"] = "59 06 00 6A 8D 23 01 02 01 02 FF 00 9C DF 00 00 60 64 A0 31 70 00 00 00 00 50 40 62 34 00 71 20 96 28 3F 65 00 00 3F 64 03 E8 44 6A FF 64 44 A7 00 00 20 29 00 04 F4 0B 61 20 97 00 00 41 C8 00 41 C9 00 41 C7 00",
		["22 02 DF"] = "62 02 DF 6B 42 6E 4C 68 43 68 48 62 4C 66 4D 63 47 68 4A 68 4B 69 43 70 41 6C 4F 61 47 62 45 61 4D 6D 48 6E 48 64 4B 6C 4F 6E 4D 6B 42 68 49 6D 4C 6C 4B 69 49 6B 44 6A 4C 61 4A 64 42 67 41 6E 46 6D 50 6C 46 64 49 6D 4A 6B 4C 6C 48 6E 42 6A 4D 66 43 6B 4B 6D 49 61 4A 6C 41 64 4E 63 4E 6B 4F 6E 4E 68 44 6D 4C 6E 47 6C 47 6A 45 62 48 62 42 69 44 64 42 67 4B 6D 46 6D 47 6E 4D 63 43 70 43 64 4F 6F 4A 6B 4B 67 4A 6F 49 6C 4F 6A 45 6F 49 6F 49 67 44 6B 4F 66 45 6B 4A 64 4B 70 50 6B 4D 6F 4A 6B 4A 66 4C 69 44 6C 42 6C 4E 70 41 6D 44 6C 49 68 42 6C 44 68 4E 66 4B 66 4F 6A 4E 61 4A 6A 46 6F 4E 67 49 6B 48 62 4C 62 41 67 4C 6D 45 6A 48 66 4B 6D 4D 64 45 63 45 6E 4D 68 50 6F 49 6E 4B 68 4E 69 43 6F 4E 61 4A 63 4C 64 4A 69 41 64 4D 65 4A 68 4E 63 4B 64 49 67 4A 6F 44 68 4A 6C 4C 61 42 65 42",
		["22 06 00"] = "62 06 00 00 19 40 1C 43 24 01 09 00 00",
		["22 09 04"] = "62 09 04 0B B8",
		["22 10 5E"] = "62 10 5E 01",
		["22 2A 07"] = "62 2A 07 33 16",
		["22 58 67"] = "62 58 67 00 26 0F AF 09 D6 04 32",
		["22 58 68"] = "62 58 68 00 25 46 8B 07 F4 04 32",
		["22 58 69"] = "62 58 69 00 26 3E 2C 04 2A 02 8F",
		["22 F1 7C"] = "62 F1 7C 44 48 31 2D 30 30 53 30 37 2E 30 32 2E 31 37 55 50 53 36 32 31 37 31",
		["22 F1 87 F1 89 F1 91 F1 A3 F1 A5 F1 DF"] = "62 F1 87 30 34 4C 39 30 36 30 35 36 4B 4D F1 89 36 31 38 36 F1 91 30 34 4C 39 30 37 34 34 35 20 20 F1 A3 48 30 32 F1 A5 06 24 66 2C 0A B1 F1 DF 40",
		["22 F1 87"] = "62 F1 87 30 34 4C 39 30 36 30 35 36 4B 4D",
		["22 F1 89"] = "62 F1 89 36 31 38 36",
		["22 F1 91"] = "62 F1 91 30 34 4C 39 30 37 34 34 35 20 20",
		["22 F1 97"] = "62 F1 97 52 34 20 32 2E 30 6C 20 54 44 49 20 20",
		["22 F1 9E"] = "62 F1 9E 45 56 5F 45 43 4D 32 30 54 44 49 30 33 30 30 34 4C 39 30 36 30 35 36 4B 4D 00",
		["22 F1 A2"] = "62 F1 A2 30 30 34 30 31 33",
		["22 F1 A3"] = "62 F1 A3 48 30 32",
		["22 F1 A5"] = "62 F1 A5 00 00 00 00 00 00",
		["22 F1 AA"] = "62 F1 AA 32 44 32 44 32",
		["22 F1 AD"] = "62 F1 AD 43 58 48 41",
		["22 F1 B1"] = "7F 22 31",
		["22 F1 DF"] = "62 F1 DF 40",
		["22 F4 01"] = "62 F4 01 00 0E EB 00",
		["22 F4 31"] = "62 F4 31 34 EF",
		["22 F8 04"] = "62 F8 04 02 30 34 4C 30 35 36 4B 4D 33 38 30 30 4A 45 41 44 4E 4F 58 30 30 39 30 37 38 30 35 20 30 30 33 34",
		["22 F8 06"] = "62 F8 06 02 9D 54 3B C3 B8 66 C2 AD",
		["22 F8 08"] = "7F 22 31",
		["22 F8 0B"] = "62 F8 0B 12 04 32 09 D6 00 C3 00 31 00 B4 04 32 00 00 00 00 00 F9 00 31 02 F1 04 32 06 6C 04 32 05 17 04 32 00 00 00 00",
		["27 03"] = "67 03 01 02 03 04",
		["27 04 *"] = "67 04",
		["27 11"] = "67 1101 02 03 04",
		["27 12 *"] = "67 12",
		["2E 09 04 0B B8"] = "6E 09 04",
		["2E F1 5A *"] = "6E F1 5A",
		["2E F1 98 *"] = "6E F1 98",
		["2E F1 99 *"] = "6E F1 99",
		["31 01 02 02 00 00 00 00"] = "71 01 02 02 00",
		["31 01 02 03"] = "71 01 02 03",
		["31 01 FF 00 01 02"] = "71 01 FF 00 00",
		["31 01 FF 01"] = "71 01 FF 01 00",
		["34 AA 41 02 00 3D 00 00"] =  function(request) PCM.addFlashBlock() PCM.setRequestDownloadInfos(request:sub(10,11), request:sub(13,23), request:sub(4,5)) return "74 20 0F FF" end,
		["36 *"] = function(request) PCM.addRequestPayload( request:sub(7) ) return "76 " .. request:sub(4,5) end,
		["37"] = "77",
		["11 01"] = function(request) PCM.reconstructFlashFile("D:\\temp\\FlashTest\\pcm.bin") return "51 01" end,
    }
}