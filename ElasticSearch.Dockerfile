FROM docker.elastic.co/elasticsearch/elasticsearch:8.8.1

RUN bin/elasticsearch-plugin install analysis-smartcn
RUN bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-stconvert/releases/download/v8.8.1/elasticsearch-analysis-stconvert-8.8.1.zip

#for manually installation
#RUN curl -L https://github.com/medcl/elasticsearch-analysis-stconvert/archive/refs/tags/v8.10.0.tar.gz > stconvert.tar.gz
#RUN tar xvf stconvert.tar.gz
#RUN rm stconvert.tar.gz
#RUN ls *stcon*
