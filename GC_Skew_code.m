genome_sequence=getgenbank('NC_001134', 'PartialSeq', [28933, 29152])
index=str2double(genome_sequence.LocusSequenceLength)
for i=1:+1:index
start=i;
ending=i+10;
genome_temp=getgenbank('NC_001134', 'PartialSeq', [start,ending]);
bases=basecount(genome_temp);
GC_Skew(i)=(bases.G-bases.C)./(bases.G+bases.C);
end
plot(GC_Skew)