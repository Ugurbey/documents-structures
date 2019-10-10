#!/bin/bash
file_in="tournagesdefilmsparis2011.csv"
file_out="simple.xml"
echo '<?xml version="1.0"?>' > $file_out
echo '<Début_document>' >> $file_out
while IFS=$';' read -r -a arry
do
  echo '  <Données>' >> $file_out
  echo '    	<Titre>'${arry[0]}'</Titre>' >> $file_out
  echo '    	<Réalisateur>'${arry[1]}'</Réalisateur>' >> $file_out
  echo '    	<Adresse>'${arry[2]}'</Adresse>' >> $file_out
  echo '    	<Organisme_demandeur>'${arry[3]}'</Organisme_demandeur>' >> $file_out
  echo '    	<Type_de_tournage>'${arry[4]}'</Type_de_tournage>' >> $file_out
  echo '    	<Arrondissement>'${arry[5]}'</Arrondissement>' >> $file_out
  echo '    	<Date_début>'${arry[6]}'</Date_début>' >> $file_out
  echo '   		<Date_fin>'${arry[7]}'</Date_fin>' >> $file_out
  echo '		<xy>'${arry[8]}'</xy>' >> $file_out
  echo '  </Données>' >> $file_out
done < $file_in
echo '</Fin_document>' >> $file_out