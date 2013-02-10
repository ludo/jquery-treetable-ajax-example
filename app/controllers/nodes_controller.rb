class NodesController < ApplicationController
  def index
    @nodes = Node.roots
  end

  def children
    @nodes = Node.find(params[:id].to_i).children

    render layout: false
  end

  def update
    @node = Node.find(params[:id].to_i)
    @node.update_attributes(params[:node])

    render text: ""
  end
end
