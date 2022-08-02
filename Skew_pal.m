genome_sequence=getgenbank('NC_001134', 'PartialSeq', [28933, 29152]);
S = genome_sequence.Sequence;
for i=1:+1:length(S)-10
st=i;
en=i+10;
genome_temp= S(st:en);
bases=basecount(genome_temp);
GC_Skew(i)=(bases.G-bases.C)./(bases.G+bases.C);
end
plot(GC_Skew)