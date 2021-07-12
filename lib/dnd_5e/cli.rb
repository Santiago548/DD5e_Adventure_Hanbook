class Dnd5e::CLI
  
  def start
      puts"

      ▄████████     ███        ▄█    █▄            ▄████████ ████████▄   ▄█      ███      ▄█   ▄██████▄  ███▄▄▄▄   
      ███    ███ ▀█████████▄   ███    ███          ███    ███ ███   ▀███ ███  ▀█████████▄ ███  ███    ███ ███▀▀▀██▄ 
      ███    █▀     ▀███▀▀██   ███    ███          ███    █▀  ███    ███ ███▌    ▀███▀▀██ ███▌ ███    ███ ███   ███ 
      ███            ███   ▀  ▄███▄▄▄▄███▄▄       ▄███▄▄▄     ███    ███ ███▌     ███   ▀ ███▌ ███    ███ ███   ███ 
    ▀███████████     ███     ▀▀███▀▀▀▀███▀       ▀▀███▀▀▀     ███    ███ ███▌     ███     ███▌ ███    ███ ███   ███ 
             ███     ███       ███    ███          ███    █▄  ███    ███ ███      ███     ███  ███    ███ ███   ███ 
       ▄█    ███     ███       ███    ███          ███    ███ ███   ▄███ ███      ███     ███  ███    ███ ███   ███ 
     ▄████████▀     ▄████▀     ███    █▀           ██████████ ████████▀  █▀      ▄████▀   █▀    ▀██████▀   ▀█   █▀ 


      ▄████████ ████████▄   ▄█    █▄     ▄████████ ███▄▄▄▄       ███     ███    █▄     ▄████████    ▄████████ 
      ███    ███ ███   ▀███ ███    ███   ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███   ███    ███   ███    ███ 
      ███    ███ ███    ███ ███    ███   ███    █▀  ███   ███    ▀███▀▀██ ███    ███   ███    ███   ███    █▀  
      ███    ███ ███    ███ ███    ███  ▄███▄▄▄     ███   ███     ███   ▀ ███    ███  ▄███▄▄▄▄██▀  ▄███▄▄▄     
    ▀███████████ ███    ███ ███    ███ ▀▀███▀▀▀     ███   ███     ███     ███    ███ ▀▀███▀▀▀▀▀   ▀▀███▀▀▀     
      ███    ███ ███    ███ ███    ███   ███    █▄  ███   ███     ███     ███    ███ ▀███████████   ███    █▄  
      ███    ███ ███   ▄███ ███    ███   ███    ███ ███   ███     ███     ███    ███   ███    ███   ███    ███ 
      ███    █▀  ████████▀   ▀██████▀    ██████████  ▀█   █▀     ▄████▀   ████████▀    ███    ███   ██████████ 
                                                                                       ███    ███              


           ▄█    █▄       ▄████████ ███▄▄▄▄   ████████▄  ▀█████████▄   ▄██████▄   ▄██████▄     ▄█   ▄█▄ 
           ███    ███     ███    ███ ███▀▀▀██▄ ███   ▀███   ███    ███ ███    ███ ███    ███   ███ ▄███▀ 
           ███    ███     ███    ███ ███   ███ ███    ███   ███    ███ ███    ███ ███    ███   ███▐██▀   
          ▄███▄▄▄▄███▄▄   ███    ███ ███   ███ ███    ███  ▄███▄▄▄██▀  ███    ███ ███    ███  ▄█████▀    
         ▀▀███▀▀▀▀███▀  ▀███████████ ███   ███ ███    ███ ▀▀███▀▀▀██▄  ███    ███ ███    ███ ▀▀█████▄    
           ███    ███     ███    ███ ███   ███ ███    ███   ███    ██▄ ███    ███ ███    ███   ███▐██▄   
           ███    ███     ███    ███ ███   ███ ███   ▄███   ███    ███ ███    ███ ███    ███   ███ ▀███▄ 
           ███    █▀      ███    █▀   ▀█   █▀  ████████▀  ▄█████████▀   ▀██████▀   ▀██████▀    ███   ▀█▀ 
                                                                                          ▀         
                                        .-~~~~~~~~~-._       _.-~~~~~~~~~-.
                                    __.'              ~.   .~              `.__
                                  .'//                  \./                  \\`.
                                .'//                     |                     \\`.
                              .'// .-~'''''''~~~~-._     |     _,-~~~~''''''''~-. \\`.     
                            .'//.-'                 `-.  |  .-'                 '-.\\`.
                          .'//______.============-..   \ | /   ..-============.______\\`.
                        .'______________________________\|/______________________________`'.
                                                                              
                      "
    puts "                         =========================================="
    puts "                         Welcome to the 5th Edtion Adventure Manuel"
    puts "                         =========================================="
    @klasses = API.fetch_klasses
    get_klass_list
    get_user_klass
    prompt
    inp = gets.strip.downcase
    while inp != 'exit' do
      if inp == 'classes'
        get_klass_list
        get_user_klass
      else
        puts "===================================="
        puts "I do not information on that subject."
        puts "===================================="
      end
      prompt
      inp = gets.strip.downcase
    end
    farwell
  end
  
  def get_klass_list
     puts ""
    @klasses.each.with_index(1) do | c, i |
      puts "#{i} - #{c.capitalize}"
      puts "-------------------"
    end
  end
  
  def get_user_klass
    puts "=================================================================="
    puts "type the 'name' from the Class list above you wish to learn about."
    puts "=================================================================="
    puts ""
    @klass = gets.strip.downcase
    puts ""
    if @klasses.include?(@klass)
    API.fetch_klass(@klass)
    klasses = Klass.find_klass(@klass)
    print_klass_info(klasses)
    else
     puts "===================================="
     puts "I do not information on the subject."
     puts "===================================="
   end
  end
  
  def print_klass_info(k)
    pr = k.proficiencies
    sk = k.skills
    puts "============================================"
    puts "find the info you seek on you chossen class."
    puts "============================================"
    klass_logo
    puts ""
    puts "--------------------------------"
    puts "your chosen #{k.name} has (#{k.hit_die}) Hit Die"
    puts "-Their saving throws are +#{k.saving_throws[0]["name"]}/#{k.saving_throws[1]["name"]}+"
    puts "-At higher lvls you can subclass to +#{k.subclasses[0]["name"]}+ #{k.name}"
    puts "-They are Proficient at:"
    puts "+-+-+-+-+-+-+-+-+-+-+"
      pr.each.with_index(1) do | p, i |
      puts "#{i}. #{p["name"]}"
      end
    puts "+-+-+-+-+-+-+-+-+-+-+"
    puts "-Their skills are: "
    puts "+-+-+-+-+-+-+-+-+-+-+"
      sk.each.with_index(1) do | p, i |
      puts "#{i}. #{p["name"]}"
      end
    puts "+-+-+-+-+-+-+-+-+-+-+"
  end
  
  def prompt
    puts ""
    puts "======================================="
    puts "type 'classes' to see the class list or"
    puts "type 'exit' to exit"
    puts "======================================="
    puts ""
  end
  
  def farwell
    puts "================"
    puts "Farwell Travler."
    puts "================"
  end
  
end


                                                      
def klass_logo
  puts "                                                
                  `+ssss+`                         
                  -MMMMMMomso+:.                   
            .:+smdsMMMMMMoNMMMMNs.                 
          -yNMMMMmsMMMMMMoNMMMMMy/:`               
          :hMMMMMmsMMMMMMoNMMMMMymNmds:-`          
          -hMMMMMmoMMMMMMoNMMMMMymMMMMMd:          
          ./ooooo+:oooooo-NMMMMMymMMMMMd:          
         :yNMMMMMMMMMMMMMoNMMMMMymMMMMMd:          
        +mMMMMMMMMMMMMMMM-dmmmmm/smmmms-`          
        sMMMMMMMMNmmmmmm//yyyyyyyyyyyyy/           
        :hMMMMMMNdyyyyyy/-mMMMMMMMMMMMMs           
         oMMMMMMMMMMMMMMMy:NMMMMMMMMMMMs `         
      /o-:hMMMMMMMMMMMMMMMMMMMMMMMMMMMMyoms+       
    -dyoyoyMMMMMMMMMMMMMMMMMMMMMMMMMMMdohNhyd      
    /ysdM+/mMMMMMMMMMMMMMMMMMMMMMMMMMMy/hMmyd      
     -sNMm//mMMMMMMMMho:  :ohNMMMMMMMd:+MMNs-      
    /++oo-  .omMMMNho++h  yo+ohNMMMmo.  -oo++/     
  /yymMMMNs.  :mMMMMMMMM- NMMMMMMMm/  `oNMMNh+y/   
  d+omMMMMMo  .oMMMMMMMMo+NMMMMMMMs.  +MMMMMd//m   
  yhNMMMMMN+   .hMMMMMMMNhMMMMMMMm:   /NMMMMMNhh   
  `sdNMMds:`    /MMMMMMMMMMMMMMMM+    `-odMMNds`   
    `.-//sdds:- .sMMMMMMMMMMMMMMy. `-sdds/+-.`     
     `odydMMMMm/ -NMMmoMMMMssNMN: :hNMMMNhhs`      
     /ho/hMMMMMd: :MN+`MMMM./mM/`-dMMMMMd/+d/      
     :hdNMMMMMMd: `yN. yMMh` dd- :dMMMMMMNdh:      
      +mMMMMMMd/   .d  .MMo` o:`  +dMMMMMMmo       
       .:++++:.     .   MM`        .:++++/.        
                        Md`                        
                        /+ 
"                       
                          
                           
puts "                                                                                 
                          :                           
                          ss                          
                          Md                          
                         dMMh                         
     o                  hMMMMo                  o     
     /Nyo             `MMMMMMMs`            `oyo      
       oMMso         oooo`   ooo          osMM+       
         oMMMho        oooooooo        odMMMo         
           NMMMMNo     MMMMMMMM     oNMMMMo           
            /dMMMMMMo  MMMMMMMM  oMMMMMMd/            
              oMMMMMM  MMMMMMMM  MMMMMM:              
                mmmmm  MMMMMMMM  mmmmo                
         M   :         MMMMMMMM         :   s         
      oMMM  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMy  MMooo     
ooooMMMMM   yMMMMMMMMMMMMMMMMMMMMMMMMMMMMy  MMMMMMoooo
  oooMMMMo  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMh  MMMMMoo`  
       sMM  hMsssssssssMMMMMMMMsssssssssM/  MMo`      
         o       ::::  MMMMMMMM  ::::       o         
               oMMMMM  MMMMMMMM  MMMMM-               
              yMMMMMM  MMMMMMMM  MMMMMMo              
            /dMMMMMo   NMMMMMMN   oMMMMMd             
           +MMMMoo    oMMMMMMMM     oMMMMM+           
          NMMMo                        oMMMo          
        /MMh-        +NooooooooN         ohMN         
       oMo:            oMMMMMMd            :dM.       
      oo                /MMMM:                oo      
                         /MM/                         
                          ds                          
                          ss                          
"                                     

puts "
       MMMMN+                             `+oMMMN      
       dMMMMMN-                          oMMMMMMd      
         mMMMMM   `````ooooooooo`````   :MMMMM/        
          MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM         
       ooMMMMMhooMMoooMM   Ms  `MoooMMsooMMMMMMoo      
     oMMMMMMMM   MM   MM   Ms  `M   MM`  :MMMMMMMMo    
       MMMMMM.   MM   MM   My   M   MM`   yMMMMM       
       MMMMMd    MM   MM   My   M   MM     MMMMMM      
      MMMMMM`    MM   MM  sMN`  M   MM     /MMMMMo     
      MMMMMM     MM   MM sMMMN+ M   MM`    `MMMMMM     
     MMMMMM`     MM   MMMMMMMMMMMo  MM`     MMMMMM     
   +`MMMMMM`     MMooMMMMMMMMMMMMMMoMM`     MMMMMMM o  
  :m`MMMMMM`     MM   MMMMMMMMMMMo  MM`     MMMMMMo M` 
  oN MMMMMM`     MM   MMoMMMMMs`M   MM`     MMMMMM  M- 
  MN  MMMMMM`    MM   MM  NMM+  M   MM     /MMMMMM  M. 
  MM  MMMMMMM.   MM   MM  -Md   M   MM    oMMMMMMo oM. 
  yMo  MMMMMMM:  MM   MM   My   M   MM`  dMMMMMMN  MM- 
  -MM   MMMMMMMm+MM   MM   Ms  `M   MM`oMMMMMMMM  oMM. 
   sMM   MMMMMMMMMMo  MM   Ms  `M   MMMMMMMMMMo  oMM.  
    sMMo  oMMMMMMMMMMMMMoooMdoooMMMMMMMMMMMMMo  oMMo   
     oMMo  `sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN+  /MMM`    
       oMMo   +dMMMMMMMMMMMMMMMMMMMMMMMMs-  -dMdo      
         /oMy-   +oNMMMMMMMMMMMMMMMNNo+   ohMo/        
             :o/      oooooooooooo      oo:            
"

puts "                         
   .ooo                    /o:                     ooo  
   /Ms`oN/        .N/   /oNMMMMMmo/    oM         oN+sMM 
    +:MMMMd-      `MMd-sMMMMMMMMMMMs oMMM       oMMMMm.: 
     +NMMMMMy.   oMMMMMy+NMMMMMMMN/oMMMMMo    oMMMMMMo   
       oMMMMMMyMMMMMMMMMMsoNMMMm+oMMMMMMMMMdoMMMMMMo     
         oMMMMMMMMMMMMMooo       oooMMMMMMMMMMMMMo       
           MMMMMMMMMM                 MMMMMMMMMMM        
         +MMMMMMMmyMMMo+            +MMMMoMMMMMMMM       
     oMMMMMMMMMMMMd+hMMMo  :////  /NMMMooMMMMMMMMMMMMh   
       oMMMMMMs`+NMMh+mMMMo-hMMo-dMMMooMMMs:.MMMMMMm:    
       o oMMMM    +MMMs+NMMMo--hMMMooMMMo`   oMMMM+o     
       MMo oM`      oMMMooMo/dMMMooMMMo       MMooMMo    
      `MMMMo        oooMMooNMMMMoMMMo o        oMMMMM    
      `MMMMMM       MMM oMMMMMMMMMo MMM       `MMMMMM    
       MMMMMM       Mo+MMMMMMMMMs+MMo s       `MMMMMM    
       MMMMMM       :mMMMMMMMMs+NMMMMMo       mMMMMMo    
       NMMMMMh    -hMMMMMMMMs`-NMMMMMMMMo    -MMMMMM     
        MMMMMMs :hMMMMMMMMo`oMm/oMMMMMMMMMo .MMMMMMo     
         MMMMo+mMMMMMMMMo  +oooo  oMMMMMMMMMo`sMMMo      
         oMooNMMMMMMMMo             oMMMMMMMMMo oo       
           MMMMMMMMMo                 oMMMMMMMMM         
          /MMMMMMMs`oMNo//        /ooMN/oMMMMMMMM        
          MMMMMNs.oMMMMMMMMMMMMMMMMMMMMMd:+mMMMMM-       
          oo++   +MMMMMMMMMMMMMMMMMMMMMMMo`  `+oNN       
                    oooMMMMMMMMMMMMMooo                  
                          ooooooo                        
"                                                                                   

puts "                                   
         `y-                                     :+`      
         `Nm:              `-+h+-               +my`      
         `NMNo`          .++hMMMd//.           sMMy`      
         `smMMy`      `:yNMyyMMMhoMNy-`      .yMMd/`      
         `sddNMh-    -yNMMMyyMMMhoMMMNy-    :dMNhd+`      
          :NNmNMm/``oNMMMMMyyMMMhoMMMMMN+``+mMNdNN/       
          `omNMMMN+hMMMMMMMddMMMmhMMMMMMMhoMMMMmdo`       
           :hNmMMMNMMMMMMMMMNNMNmMMMMMMMMMMMMMddd-        
            :hNMMMMMMMh++++/-om+.+++++hMMMMMMMNd:         
             `odMMMMMMd/--.-``. .----/dMMMMMNdo`          
              `/dNMMMMMMNNNNy` .mNNNNMMMMMMNh/`           
                `/hMMMMMMMMMy. .NMMMMMMMMMh/`             
                  `mMMMMMMMMy. .NMMMMMMMMN`               
                   dMMMMMMMMo  `oMMMMMMMMN                
                  oNMMMMMMMMo   +MMMMMMMMM+               
                  .+ymMMMMMMo   +MMMMMNmy+`               
                     .:sdMMMo   +MMMds:`                  
                        `.oh+   /h+-`                     
"
puts "                                                                           
                                                     
                          +h`                         
                         -mMy`                        
                        .dMMN+                        
                       -hMMMMN/                       
                      `sMMMMMMd:                      
        +o`           yMMMMMMMMd`          `/y/       
        sMNo.        .ddNMMMMMyhh        `/yMM+       
        sMMMmo`      ```sMMMMM/`.      `:yNMMM+       
        sMMMMMm+     `s//NMMMs`/.     -yNMMMMM+       
        sMMMMMd-`    sMy.dMMMo dd`    `+MMMMMM+       
        +s+MMMN:`.:+yMMy.dMMMo/NMhso/``sMMMmod/       
           +MMMNmmMMMMMy-dMMMoyMMMMMMmmMMMh. ``       
           -hMMMMMMMMMMy`hMMMoyMMMMMMMMMMM+           
         `ymMMMMMMNmhys. hMMm:./yhmMMMMMMMMh-         
        -hMMMMMMMNs.`    hMMd.   `-omMMMMMMMmo`       
       :mMMMMMmdMMy`     hMMd.     :mMNmMMMMMNo`      
   ``/omMMMMMd- yMM+     hMMd.    .hMm:.smMMMMMs/-`   
 ./ydMMMMMMMd.  `mMh:    sMMd.   `oMm-   sMMMMMMMmyo-`
`hNMMMMMMMMm-    .yMN`   `mMh    +Mm:     yMMMMMMMMNd.
 `-+dNMMMMMs      `hM+    mMh   `NN+      .MMMMMMmh/` 
    `.ohNMM-       -hN.   mMh  `sNo`      `mMMNs+``   
        .sdmho.      mh.  mMh  +N:     .:smds:.       
          `:shmy+`   -ms  dN/ :mo    /odmy/`          
              -/dhy/. :y- dm  oy``-+yds:`             
                 .odm+:`` dm` `./hdy/`                
                   `.ods./NMy.omo:`                   
                       .hMMMMd/`                      
                       -s/---+y.                      
"                                                      
                                                      
puts "                                                                                                            
                          o/                          
                        oMMMm+                        
                      oMMMMMMMNo                      
                      oMMMMMMMNo                      
                        sMMMm+                        
                        o`s+/h                        
                       `MMydMN                        
                       MMMMMMMo                       
                       MMMMMMMN                       
                 oooMMMMMMMMMMMMMMoo                  
              .sMMMMMMMMMMMMMMMMMMMMMMo               
   /ooo/     yMMMMMhyooooooooooooyhMMMMM+     ooo:    
  oMMMM:    dMMMo:  hMMMM-  MMMMhh  odMMM     MMMMM   
  sMMMMMo   hMm  `  NMMMM-  MMMMM     +MM    sMMMMM`  
     oMMMso yMmyMMMMoMMMMM +MMMMMoMMMMomM ooMMMMo     
      MMMMMMMMMMMMMoMMMMMM +MMMMMooMMMMMMMMMMMMo      
      MMMMMMMMMo++   MMMMM +MMMM     oNMMMMMMMo       
-    +MMMMMMdo.sMM    MMMM/MMMMM   oMMs.oMMMMMNo     .
NmmmMMMMMdo:  yMMMM   MMMMyMMMM   :MMMs  /+oMMMMMmmmM-
 +NMMMmo/oMMm/ /MMMh   MMMMMMMM  .MMMo +mMMy oMMMMMo` 
         +NMMMm+ MMMs  MMMMMMM   MMMo oMMMN+          
           /mMMMNooMMo  MMMMMm  MMMooMMMd/            
             :hMMMMMMM  mMMMM+ oMMMMMMs.              
               `sMMMMMM +MMMm oMMMMMs`                
                 `yMMMMN mMM++MMMMy`                  
                   -dMMMmyMM`MMMd-                    
                     /NMMsMdMMN/                      
                       +NMMMm+                        
                         /o:                          
"

puts "                                                                                                            
                         MM                                  
                         MMMoo                               
                          MMMo oMMo                          
                           `+NMMMMMMm+                       
                          odMMMMMMMMMMMo-                    
                       .oMMMMMMMMMMMMMMMMyo                  
                     .yMMMMMMMMMydMMMMMMMMMMo`               
                     yMMMMMMMMo    oMMMMMMMMMM               
                     MMMMMMMM   /o   oMMMMMMMM  oo+          
                 o    osMMMMMMoMMMM    MMMMMMM    oMo+       
               oM.      .yMMMMMMMm   /MMMMMMMM :/  .yMN/     
             oMM:          omMMMs  `dMMMMMMMo +NMo   mMMh    
            sMMo     /       +o   oMMMMMMMo  NMMMMs   oMMM`  
           MMMM   +mh           /MMMMMMMM    +MMMMMM   MMMM. 
          oMMM   NMM           NMMMMMMMo  o   /MMMMMM   MMMy 
         .MMMM  MMM:         oMMMMMMNo     M   MMMMMMM  MMMM+
         MMMMM NMMM:       +NMMMMMMN       MM  MMMMMMM  oMMM/
         MMMMMmMMMMN      oMMMMMMs.       oMM  MMMMMMM   MMM/
         MMMMMMMMMMMs    NMMMMMM+        `MMM.hMMMMMMM  `MMM-
         oMMMMMMMMMMMm    +MMMMMM-      oMMMMMMMMMMMMM  MMMy 
         `MMMMMMMMMMMMMoo   oMMMMMd   oMMMMMMMMMMMMMM   MMM. 
           MMMMMMMMMMMMMMMMoo MMMMM/.MMMMMMMMMMMMMMMo  oMo`  
            oMMMMMMMMMMMMMMMM MMMMM sMMMMMMMMMMMMMM   oMo    
             oMMMMMMMMMMMMMMM MMMMd MMMMMMMMMMMMMs   oo      
               oMMMMMMMMMMMMM MMMMy MMMMMMMMMMMs`            
                 omMMMMMMMMMMo MMMy-MMMMMMMMMs`              
                    hMMMMMMMMM MMM -MMMMMMMMo                
              ooooooMMMMMMMMMM mMM yMMMMMMMMMsooooo          
                             o +o- .+             
"                             
                             
puts "                                                                                 
                           -N                         
                           MN                        
                           :MN                       
                           -MM                       
                           MMMM                      
                          oMMMd                      
                 `M      /MMMM                       
                oM     +NMMMM+                       
              `so    oMMMMMM+       N`               
            oMN+   oMMMMMMM/       oMs               
          oMM/   +MMMMMMMM:    ooMMMMMMMoo           
       /mMMo   /NMMMMMMMo         `yMd`              
      hMMm/  :mMMMMMMMo    .y       M`   :o          
    oMMMo   mMMMMMMMM      MM       /     oMo        
   oMMMo  +MMMMMMMMo      -MM        o     oMo       
 `MMMMo  NMMMMMMMMo       hMMN       +Mo    MMo      
 sMMMo  oMMMMMMMMM        MMMM        mMm   MMM      
`MMMM   MMMMMMMMMM ++ooNMMMMMMMMooo++ mMMN  MMMM     
.MMMh   MMMMMMMMMMhMMMMMMMMMMMMMMMMMMdNMMMd MMMM     
-MMM    MMMMMMMMMM   //oohMMMMNoo//   NMMMM MMMM     
-MMM    MMMMMMMMMMM       MMMM       NMMMMMsMMMM     
 sMMM   MMMMMMMMMMMMo     +MMN     oMMMMMMMMMMMo     
 `MMM    MMMMMMMMMMMMMoo  -MM+  ooMMMMMMMMMMMMM      
   sMM   +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM       
    `yo    NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMy        
      -:    sMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd-         
             `sMMMMMMMMMMMMMMMMMMMMMMMMMd:           
                ooMMMMMMMMMMMMMMMMMMMMo-             
                    ooooMMMMMMMMMooo`                
"                                        
                                                      
puts "                                                      
                `/`                `/`                
                `omo`            `oNs`                
                 `yMd`    yy    `dMd.                 
                 `yMMm   yMMy   mMMy`                 
                 `yMMN.  oNNo  .NMMy`                 
           ./s:  .dMMN:   mm   :NMMd.  .//`           
         .oNh:`  /MMMN:  /++/  :NMMM: ```sho.         
       .+mMo-od:`mMMMN: -m--m- :NMMMd`+y/.oMms.       
      .yMMyomN+`.MMMMN`-dMyyMd-`NMMMM.`/mmoyMMo.      
     `mMMMNMNo` .MMMMN:hMMMMMMh:NMMMM:  -hMNMMNm`     
     yMMMMMMy`  -MMMMMNMMMMMMMMNMMMMMN   yMMMMMMh     
    -NMMMMMm.  `mMMMMMMMMMMMMMMMMMMMMM+  yMMMMMMN-    
    :NMMMMMy  .hMMMMMohmMMMMMMmhoMMMMMd+.:yMMMMMMs    
 .::omoosssoddNMMMMM+/hs-:NN:-:h:+MMMMMMmd+sssodNd::. 
`odmNNNMMMMMMMMMMMMM:Nm: +NN+ :mm:MMMMMMMMMMMMNNNNmdo`
  `-:ssydddMMMMMMMMM/hd  `mm`  dh/MMMMMMMMNdddNys/-`  
    -NMmdsoyyssmMMMMN+y`  hh  `y+NMMMMMds+s+sdmMN.    
    .dMMMMMMh` .omMMMMmy/.::./ymMMMMMm/` sMMMMMMo     
     .NMMMMMh``  .yMMMMMMNNNNMMMMMMd+````yMMMMMd`     
      :hNMMMNdds. `hMMMMMMMMMMMMMMh``+dddNMMMMs`      
       `oNMMMMMMmo--mMMMMMMMMMMMMm-/dMMMMMMMNh.       
         -dMMMMMMMm+:NMMMMMMMMMMN::mMMMMMMMm:`        
          `/hNMMMMMNosMMMMMMMMMMo.hMMMMMMhs.          
             -/hmMMMN.yMMMMMMMMy`hMMMMmy/`            
                `/ydN/-MMMMMMMM-/Ndyy:                
                   `..`sMMMMMMs`..`                   
                       :mMMMMm:                       
                        /NhhN/                        
                        `o..o`
"

end