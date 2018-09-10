class GraphqlTutorial2Schema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
