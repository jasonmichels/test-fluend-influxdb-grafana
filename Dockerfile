FROM fisdap/ca-certs
EXPOSE 80
COPY ./ /
ENTRYPOINT ["/logging"]