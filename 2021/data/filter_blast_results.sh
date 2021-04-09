# Carga python en la versión deseada
module load python/3.6.1

# Fichero para filtar secuencias de calidad (sólo contiene nucleótidos y '-')
# Has de modificar el script "filter_seqs.py" para que pueda funcionar correctamente!!
python filter_seqs.py genoma_virus_chungo.blast

# Extraemos las secuencias
blastdbcmd -db betacovdb/Betacoronavirus -entry_batch *seqnames -out genoma_virus_chungo.filtered.fa

# Añadimos la secuencia de referencias (virus chungo)
cat genoma_virus_chungo.fasta genoma_virus_chungo.filtered.fa > genoma_virus_chungo.filtered.fa.withref

# Eliminamos secuencias artificiales
python filter_seqs2.py genoma_virus_chungo.filtered.fa.withref

# Número de secuencias filtradas
grep -c '>' *nosynthetic
