class Curriculum < ActiveRecord::Base

  enum :unit => ["Matriz Rio de Janeiro", "VIA 040", "BR 060", "São Paulo"]
  enum :field => ['Construção Civil', 'Manutenção e Conserva', 'Engenharia', 'RH', 'Departamento Pessoal', 'Auxiliar Administrativo','Segurança do trabalho', 'Almoxarife','Financeiro', 'Mecânica',
  'Supervisão','Serviços Gerais', 'Atendimento']

  validates_presence_of :name, :lastname, :file, :email, :phone, :unit, :field

  mount_uploader :file, FileUploader

end
