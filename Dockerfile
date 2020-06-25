FROM neo4j:4.0-enterprise

ENV NEO4J_AUTH=neo4j/root
ENV NEO4J_ACCEPT_LICENSE_AGREEMENT=yes

ENV NEO4JLABS_PLUGINS=['"apoc"']
ENV NEO4J_apoc_export_file_enabled=true
ENV NEO4J_apoc_import_file_enabled=true
ENV NEO4J_apoc_import_file_use__neo4j__config=true
ENV NEO4J_dbms_security_procedures_unrestricted=apoc.*
