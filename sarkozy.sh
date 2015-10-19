#!/usr/bin/env bash

# Ce script a été écrit par Nicolas Sarkozy. 
# (Enfin, je le lui attribue volontiers)

# C'est pas par ce que vous voulez écrire un script
# que vous décendez de la voiture dont vous vous 
# abstenez de choisir le chauffeur. 

# Et il arrive à répondre au chal, si seulement il 
# savait calculer la base du sapin et créer poser tronc

process_cone(){
    # 0. Print first line
    
    # 1. Buffer i=3 lines, dup last 2 lines
    # 2. Buffer i=3 lines, dup last 2 lines
    
    # 3. Buffer i=4 lines, dup last 3 lines
    # 4. Buffer i=4 lines, dup last 3 lines
    
    # 5. Buffer i=5 lines, dup last 4 lines
    # 5. Buffer i=5 lines, dup last 4 lines
    # Etc... 
    o=1
    n=3
    d=2
    IFS='' read -r line
    echo "$line"
    #set -x
    while true; do
        lines="`IFS='' ; i=0 ; while read -r l ; do echo "$l" ; ((i+=1)) ; [[ $i -eq $n ]] && break ; done `"
        [[ -z $lines ]] && break
        echo "$lines"
        [[ "`echo -n "$lines" | tail -n 1 | head -c 1 `" == '*' ]] && break
        #echo "$lines*" | tail -c 1
        #break
        echo "$lines" | tail -n "$d"
        [[ $(($o%2)) -eq 0 ]] && ((n+=1)) && ((d+=1))
        ((o+=1))
    done
}

cat - <<EOF | process_cone
                                                  *
                                                 ***
                                                *****
                                               *******
                                              *********
                                             ***********
                                            *************
                                           ***************
                                          *****************
                                         *******************
                                        *********************
                                       ***********************
                                      *************************
                                     ***************************
                                    *****************************
                                   *******************************
                                  *********************************
                                 ***********************************
                                *************************************
                               ***************************************
                              *****************************************
                             *******************************************
                            *********************************************
                           ***********************************************
                          *************************************************
                         ***************************************************
                        *****************************************************
                       *******************************************************
                      *********************************************************
                     ***********************************************************
                    *************************************************************
                   ***************************************************************
                  *****************************************************************
                 *******************************************************************
                *********************************************************************
               ***********************************************************************
              *************************************************************************
             ***************************************************************************
            *****************************************************************************
           *******************************************************************************
          *********************************************************************************
         ***********************************************************************************
        *************************************************************************************
       ***************************************************************************************
      *****************************************************************************************
     *******************************************************************************************
    *********************************************************************************************
   ***********************************************************************************************
  *************************************************************************************************
 ***************************************************************************************************
*****************************************************************************************************
EOF
