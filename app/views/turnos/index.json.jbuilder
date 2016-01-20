json.array!(@turnos) do |turno|
  json.extract! turno, :id, :nombre, :resumen, :descripcion, :hora_ingreso, :hora_atencion, :hora_finalizacion, :usuario_id, :comentario_atencion, :estado, :agencia_id
  json.url turno_url(turno, format: :json)
end
