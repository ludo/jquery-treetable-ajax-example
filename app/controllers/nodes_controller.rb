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
    @node.update_attributes(node_params)

    render text: ""
  end

  private

  def node_params
    params.require(:node).permit(:kind, :modified_at, :name, :parent, :parent_id, :size)
  end
end
