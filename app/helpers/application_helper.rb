module ApplicationHelper

  def paginate *params
    params[1] = {} if params[1].nil?
    params[1][:renderer] = BootstrapPaginationHelper::LinkRenderer
    will_paginate *params
  end

end
