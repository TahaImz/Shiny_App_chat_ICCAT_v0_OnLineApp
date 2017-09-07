###VPA_ICCAT_BFT-E :: STEP 2 (Visualisation)   Rshiny###

zip_package_url = "http://data.d4science.org/V0lCU2lpYi9sdnNUQ29LNWFERGs5Tm5QWGxOaFpQb01HbWJQNStIS0N6Yz0"

root_folder_for_zip=getwd()
zip_file=paste(getwd(),"/Shiny_App_chat_ICCAT_v0_OnLine.zip",sep="")
cat("downloading URL",zip_package_url,"\n")
download.file(zip_package_url, destfile = zip_file, method='auto', quiet = FALSE, mode = "w",cacheOK = TRUE,extra = getOption("download.file.extra"))
cat("unzipping",zip_file,"\n")
unzip(zip_file, overwrite = T, exdir = getwd())

system("chmod -R 777 ./*")



dirMain     <- paste(getwd(),"/Shiny_App_chat_ICCAT_v0_OnLine/taha/",sep="")
# dirMain     <-  "/home/taha/Projets/Taha_VPA_orig1/"

dirRScripts <- paste(dirMain, "Rscripts/", sep="")
dirData     <- paste(dirMain, "data/", sep="")
dirRData    <- paste(dirMain, "Rdata/", sep="")


###########
##########
dir_main <- dirMain
dir_R_scripts <- dirRScripts
dir_data     <- dirData



runApp(paste(getwd(),"/Shiny_App_chat_ICCAT_v0_OnLine/", sep=""))
