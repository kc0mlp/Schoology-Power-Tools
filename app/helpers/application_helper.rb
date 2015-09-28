module ApplicationHelper


  def flash_class(level)
    case level
      when 'warning' then return "alert alert-warning"
      when 'success' then return "alert alert-success"
      when 'info' then return "alert alert-info"
      when 'danger' then return "alert alert-danger"
      when 'notice' then return "alert alert-notice"

    end

  end
end
