# Use official Odoo image (you can pick version 16 or 17)
FROM odoo:18

# Install extra dependencies (optional)
USER root
RUN pip3 install psycopg2-binary

# Switch back to odoo user
USER odoo

# Expose the port
EXPOSE 8080

# Start Odoo
CMD ["odoo", "--http-port=8080", "--db_host=${PGHOST}", "--db_port=${PGPORT}", "--db_user=${PGUSER}", "--db_password=${PGPASSWORD}"]
