FROM ubuntu

COPY --from=hashicorp/terraform:0.12.0 /bin/terraform /bin/

COPY . . 

# ensure script runnable
RUN ["chmod", "+x", "./scripts/setup.sh"]

CMD ["./scripts/setup.sh"]
