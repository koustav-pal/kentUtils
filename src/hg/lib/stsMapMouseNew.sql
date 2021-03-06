# stsMapMouseNew.sql was originally generated by the autoSql program, which also 
# generated stsMapMouseNew.c and stsMapMouseNew.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#STS marker and its position on golden path and various maps
CREATE TABLE stsMapMouseNew (
    chrom varchar(255) not null,	# Chromosome or 'unknown'
    chromStart int not null,	# Start position in chrom - negative 1 if unpositioned
    chromEnd int unsigned not null,	# End position in chrom
    name varchar(255) not null,	# Name of STS marker
    score int unsigned not null,	# Score of a marker = 1000 when placed uniquely, else 1500/(#placements) when placed in multiple locations
    identNo int unsigned not null,	# Identification number of STS
    ctgAcc varchar(255) not null,	# Contig accession number
    otherAcc varchar(255) not null,	# Accession number of other contigs that the marker hits
    rhChrom varchar(255) not null,	# Chromosome (no chr) from RH map or 0 if none
    rhPos float not null,	# Position on rh map
    rhLod float not null,	# Lod score of RH map
    wigChr varchar(255) not null,	# Chromosome (no chr) from WICGR genetic or 0 if none
    wigPos float not null,	# Position on WICGR Genetic map
    mgiChrom varchar(255) not null,	# Chromosome (no chr) from MGD geneticmap or 0 if none
    mgiPos float not null,	# Position on MGD genetic map
              #Indices
    INDEX(identNo),
    INDEX(chrom(8),chromStart)
);
